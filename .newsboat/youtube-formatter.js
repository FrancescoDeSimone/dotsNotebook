const fs = require('fs')
if(process.argv.length <= 2){
    console.log("Missing RSS")
    exit(1)
}


fs.readFile(process.argv.slice(2)[0], 'utf8', function(err, str) {  
    if (err) throw err
    const regex = /text="([^"]+)" title="[^"]+" type="[^"]+" xmlUrl="(https:\/\/www\.youtube\.com\/feeds\/videos\.xml\?channel_id=.*?)"/gm
    let m
    while ((m = regex.exec(str)) !== null) {
        // This is necessary to avoid infinite loops with zero-width matches
        if (m.index === regex.lastIndex) {
            regex.lastIndex++
        }
        
        m = m.reverse()
        // The result can be accessed through the `m`-variable.
        m.forEach((match, groupIndex) => {
            if(groupIndex == 0)
                process.stdout.write(`${match} `)
            else if(groupIndex == 1 )
                process.stdout.write(`"~Youtube: ${match}"`)
            else
                console.log("")
        })
    }
})
