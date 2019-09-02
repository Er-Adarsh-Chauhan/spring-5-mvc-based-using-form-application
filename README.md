# spring-5-mvc-based-using-form-application

### what is validations in java ?

Form validation is useful when you need a user to input information that is expected to meet certain requirements. There are two validation standards: server side validation and client side validation. There are several ways to achieve accurate form validation for each of these standards.
  1. Server side validation is performed by a web server, after input has been sent to the server.
  2. Client side validation is performed by a web browser, before input is sent to a web server.
  
#### 1. Server side validation

If you have to choose between client side and server side validation, choose server side validation. We cannot rely on data that are only validated client side because an expert level user or hacker may change the data before submission to the server. Bad data can harm a server, steal information or even delete a whole database.

Another feature that is not present in client side validation is when the validation process requires resources on the server, such as a list of valid values stored in a database, against which it can compare the input.

Due to the vast number of server side languages and server side validation techniques, we will not cover details on how to implement server side validation.

#### 2. Client side validation
Client side validation can be desirable because it helps to reduce server load and provide immediate feedback to users while the fill out a form. There are two major ways to go about client side validation.

1. HTML5 validation - recommended
2. JavaScript validation

##### 1. The HTML5 way:
HTML5 has form validation built in as attributes which simplifies the task. Because this kind of validation is supported natively, we recommend using it wherever possible over the JavaScript validation library that is provided by the framework. While HTML5 validation is powerful, it can be difficult to implement complex validation such as making sure two email fields match.

For example, to have the input field for name be a required field, use the required attribute in the input element. It will now look like, `<input id="name" name="name" type="text" required="">`. That's it!

For some more details on HTML5 validation and form elements, see the MDN Forms in HTML documentation. One major drawback is flexibility of alert prompts in terms of text and format. This is can be solved using the constraint validation API provided by HTML5.

##### 2. The JavaScript way
While HTML5 validation is preferred, you can use the JavaScript validation that is provided by the framework for some more complex validation patterns.

To make sure that the email and confirm email fields are identical, use class="validate-email" in the email field along with id="email" to reference that field. It will look like, <input class="validate-email" id="email" name="email" type="text">
To do the comparison, include the following jQuery.
`<script>`
        `WDN.initializePlugin('form_validation', [function($) {`
          `$.validation.addMethod('validate-confirm-email', 'This field must match the value of the email field.',`
          `{equalToField:'#email'});`
          `$('#myform').validation({immediate: true});`
          `}]); `
     `</script>`
