#!/usr/bin/env node

function colorTag(colorCode) {
    return (strings, ...values) => {
        return `\x1b[${colorCode}m${strings.join('')}\x1b[0m`;
    };
}

const rr = colorTag(31); // Red
const gg = colorTag(32); // Green
const bb = colorTag(34); // Blue
const yy = colorTag(33); // Yellowo
const cc = colorTag(36); // Cyan

function makeMenu(options) {
    const formattedOptions = options.map(option => {
        let hasFormatted = false;
        return option.split('').map(char => {
            if (char === char.toUpperCase() && !hasFormatted) {
                hasFormatted = true;
                return '(' + `${char}` + ')';
            }
            return char;
        }).join('');
    }).join(bb`|`); // Use the bb function to color the separator in blue

    console.log(bb`Select an issue to ` + formattedOptions + bb`/` + `(Q)uit:`);
}

const args = process.argv.slice(2);
makeMenu(args);
