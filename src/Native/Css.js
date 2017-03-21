// eslint-disable-next-line no-unused-vars
var _styled_components$elm_styled$Native_Css = (function () {
	var styleTags = []
	var insertedRules = {}
	var maxLength = 65000

	function stringHash(string) {
		var hash = 5381
		var index = string.length

		while(index) {
			hash = (hash * 33) ^ string.charCodeAt(--index)
		}

		return hash >>> 0
	}

	function insertStyleSheet() {
		// Create the <style> tag
		var style = document.createElement('style')

		// WebKit hack :(
		style.appendChild(document.createTextNode(''))

		// Add the <style> element to the page
		document.head.appendChild(style)

		styleTags.push(style)

		return style
	}


	function getSheet() {
		var styleTag = styleTags[styleTags.length - 1] || insertStyleSheet()
		var sheet = styleTag.sheet

		if (sheet.cssRules.length < maxLength) {
			return sheet
		}

		return insertStyleSheet().sheet
	}

	function insert(rule) {
		var hash = stringHash(rule)

		if (!insertedRules[hash]) {
			insertedRules[hash] = true

			var sheet = getSheet()

			var isImportRule = rule.indexOf('@import') !== -1
			var rulePosition = isImportRule ? 0 : sheet.cssRules.length

			try {
				sheet.insertRule(rule, rulePosition)
			} catch (error) {
				// eslint-disable-next-line no-console
				console.warn('Illegal rule inserted. Please report a bug at https://github.com/styled-components/elm-styled and include the following error message', rule)
			}
		}
	}

	function flush() {
		styleTags.forEach(function (node) {
			node.parentNode.removeChild(node)
		})

		styleTags = []
		insertedRules = {}
	}

	return {
		insert: insert,
		flush: flush
	}
})()

if (typeof module !== 'undefined') {
	// eslint-disable-next-line no-undef
	module.exports = _styled_components$elm_styled$Native_Css
}
