const { insert, flush } = require('../../src/Native/Css.js')

function getInsertedCss(index = 0) {
	const stylesheets = Array.from(document.querySelectorAll('style'))

	const stylesheet = stylesheets[index]

	if (!stylesheet) {
		return ''
	}

	return stylesheet.sheet.cssRules
		.map(cssRule => cssRule.cssText)
		.join('\n')
}

beforeEach(flush)

describe('inserting styles', () => {
	it('should insert a rule', () => {
		insert('.header { font-size: 2rem; }')
		insert('.text { font-size: 1.5rem; }')

		const insertedCSS = getInsertedCss()
		expect(insertedCSS).toMatchSnapshot()
	})

	it('should use a second stylesheet for many rules', () => {
		for (let i = 0; i < 65010; i++) {
			insert(`.class-${i} { font-size: 2rem; }`)
		}

		const insertedCSS = getInsertedCss(1)
		expect(insertedCSS).toMatchSnapshot()
	})

	it('should insert @import rules at the top', () => {
		insert('.footer { font-size: 2rem; }')
		insert('@import url("https://example.org");')
		insert('.box { font-size: 2rem; }')

		const insertedCSS = getInsertedCss()
		expect(insertedCSS).toMatchSnapshot()
	})
})
