// import Native.Utils //

var _styled_components$elm_styled$Native_Css = function () {
	var sheet = (function () {
		// Create the <style> tag
		var style = document.createElement('style')

		// WebKit hack :(
		style.appendChild(document.createTextNode(''))

		// Add the <style> element to the page
		document.head.appendChild(style)

		return style.sheet
	})()

	var injected = {}

	function inject( hash, rules ) {
		if (!injected[hash]) {
			injected[hash] = true

			rules.forEach(rule => {
				sheet.insertRule(rule, sheet.cssRules.length)
			})
		}
	}

	return {
		inject: F2(inject)
	}
}()
