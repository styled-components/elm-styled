// eslint-disable-next-line no-unused-vars
var _styled_components$elm_styled$Native_Css = (function () {
	var stringHash = function stringHash(string) {
		var hash = 5381
		var index = string.length

		while(index) {
			hash = (hash * 33) ^ string.charCodeAt(--index)
		}

		return hash >>> 0
	}

	var createStyleSheet = function createStyleSheet() {
		// Create the <style> tag
		var style = document.createElement('style')

		// WebKit hack :(
		style.appendChild(document.createTextNode(''))

		// Add the <style> element to the page
		document.head.appendChild(style)

		return style.sheet
	}

	var oldIE = (function () {
		var div = document.createElement('div')
		div.innerHTML = '<!--[if lt IE 10]><i></i><![endif]-->'
		return div.getElementsByTagName('i').length === 1
	})()

	var maxLength = oldIE ? 4000 : 65000
	var ctr = 0

	var sheets = [createStyleSheet()]

	var getSheet = function getSheet() {
		return sheets[sheets.length - 1]
	}

	var insertedRules = {}
	var insert = function insert(rule) {
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

		if (ctr++ % maxLength === 0) {
			sheets.push(createStyleSheet())
		}

	}

	return {
		insert: insert
	}
})()
