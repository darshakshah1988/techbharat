<?php
return $myTemplates = [
            'button' => '<button{{attrs}}>{{text}}</button>',
             'checkbox' => '<input type="checkbox" name="{{name}}" value="{{value}}"{{attrs}}>',
            // Input group wrapper for checkboxes created via control().
            'checkboxFormGroup' => '{{label}}',
            // Wrapper container for checkboxes.
            'checkboxWrapper' => '<div class="check-custom">{{label}}</div>',
            'dateWidget' => '{{year}}{{month}}{{day}}{{hour}}{{minute}}{{second}}{{meridian}}',
            'error' => '<span class="invalid-feedback" role="alert">{{content}}</span>',
            'errorList' => '<ul>{{content}}</ul>',
            'errorItem' => '<li>{{text}}</li>',
            'file' => '<div class="col-md-8"><input type="file" name="{{name}}"{{attrs}}></div>',
            'fieldset' => '<fieldset{{attrs}}>{{content}}</fieldset>',
            'formStart' => '<form{{attrs}} class="book-from-box ">',
            'formEnd' => '</form>',
            'formGroup' => '{{label}}{{input}}',
            'hiddenBlock' => '<div style="display:none;">{{content}}</div>',
            'input' => '<div class="col-md-8"><input type="{{type}}" name="{{name}}"{{attrs}}/></div>',
            'inputSubmit' => '<div class="col-md-8"><input type="{{type}}"{{attrs}}/></div>',
            'inputContainer' => '<div class="form-group input {{type}}{{required}}"><div class="row">{{content}}</div></div>',
            'inputContainerError' => '<div class="form-group input {{type}}{{required}} has-error"><div class="row">{{content}}{{error}}</div></div>',
            'label' => '<label class="col-md-3 control-label"{{attrs}}>{{text}}</label>',
            'nestingLabel' => '{{hidden}}<label{{attrs}}>{{input}}{{text}}</label>',
            'legend' => '<legend>{{text}}</legend>',
            'multicheckboxTitle' => '<legend>{{text}}</legend>',
            'multicheckboxWrapper' => '<fieldset{{attrs}}>{{content}}</fieldset>',
            'option' => '<option value="{{value}}"{{attrs}}>{{text}}</option>',
            'optgroup' => '<optgroup label="{{label}}"{{attrs}}>{{content}}</optgroup>',
            'select' => '<div class="col-md-8"><select name="{{name}}"{{attrs}}>{{content}}</select></div>',
            'selectMultiple' => '<div class="col-md-8"><select name="{{name}}[]" multiple="multiple"{{attrs}}>{{content}}</select></div>',
            'radio' => '<input type="radio" name="{{name}}" value="{{value}}"{{attrs}}>',
            'radioWrapper' => '<div class="radio-inline rdo">{{label}}</div>',
            'textarea' => '<div class="col-md-8"><textarea name="{{name}}"{{attrs}}>{{value}}</textarea></div>',
            'submitContainer' => '<div class="row"><div class="col-md-3"></div>{{content}}</div>',
];
?>