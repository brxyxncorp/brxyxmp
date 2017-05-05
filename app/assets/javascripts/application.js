// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

document.addEventListener("turbolinks:load", function() {
	tinymce.remove();
	tinymce.init({
		selector: 'textarea#post_body',
		language: 'es',
		height: 500,
		max_width: 1000,
		menubar: false,
		plugins: [
			'advlist anchor autolink autoresize autosave charmap code codesample colorpicker',
			'contextmenu example fullscreen',
			'hr image imagetools link lists media nonbreaking',
			'paste preview print save searchreplace tabfocus table template',
			'textcolor textpattern toc visualblocks wordcount',
			'spellchecker'
		],
		toolbar: [
			'insertfile undo redo | newdocument print | cut copy paste pastetext | spellchecker searchreplace | template | preview visualblocks code fullscreen',
			'formatselect fontselect fontsizeselect | bold italic underline strikethrough superscript subscript | forecolor backcolor | removeformat',
			'alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media table blockquote | nonbreaking hr charmap codesample'
		],
		block_formats: 'Paragraph=p;Header 1=h2;Header 2=h3;Header 3=h4;Preformatted=pre',
		templates: [
			{title: 'Template 1', description: 'Write some awesome', content: 'Hello template'}
		],
		textpattern_patterns: [
			{start: '*', end: '*', format: 'italic'},
			{start: '**', end: '**', format: 'bold'},
			{start: '#', format: 'h2'},
			{start: '##', format: 'h3'},
			{start: '###', format: 'h4'},
			{start: '1. ', cmd: 'InsertOrderedList'},
			{start: '* ', cmd: 'InsertUnorderedList'},
			{start: '- ', cmd: 'InsertUnorderedList'}
		],
		autoresize_bottom_margin: 10,
		contextmenu_never_use_native: true,
		nonbreaking_force_tab: true,
		paste_webkit_styles: "color font-size",
		paste_retain_style_properties: "color font-size",
		textcolor_map: [
			"000000", "Black",
			"993300", "Burnt orange",
			"333300", "Dark olive",
			"003300", "Dark green",
			"003366", "Dark azure",
			"000080", "Navy Blue",
			"333399", "Indigo",
			"333333", "Very dark gray",
			"800000", "Maroon",
			"FF6600", "Orange",
			"808000", "Olive",
			"008000", "Green",
			"008080", "Teal",
			"0000FF", "Blue",
			"666699", "Grayish blue",
			"808080", "Gray",
			"FF0000", "Red",
			"FF9900", "Amber",
			"99CC00", "Yellow green",
			"339966", "Sea green",
			"33CCCC", "Turquoise",
			"3366FF", "Royal blue",
			"800080", "Purple",
			"999999", "Medium gray",
			"FF00FF", "Magenta",
			"FFCC00", "Gold",
			"FFFF00", "Yellow",
			"00FF00", "Lime",
			"00FFFF", "Aqua",
			"00CCFF", "Sky blue",
			"993366", "Red violet",
			"FFFFFF", "White",
			"FF99CC", "Pink",
			"FFCC99", "Peach",
			"FFFF99", "Light yellow",
			"CCFFCC", "Pale green",
			"CCFFFF", "Pale cyan",
			"99CCFF", "Light sky blue",
			"CC99FF", "Plum"
		]
	});
});
