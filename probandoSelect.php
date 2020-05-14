
<!DOCTYPE html>
<html lang="en">

<head>

  <title>Desglosar usuario</title>
  <meta charset="UTF-8">
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="OCUPAR/multi-select.css">

</head>

<body>

  <div class="container">
  <h1>Pre-selected-options</h1>
  <select id='pre-selected-options' multiple='multiple'>
    <option value='elem_1' selected>elem 1</option>
    <option value='elem_2'>elem 2</option>
    <option value='elem_3'>elem 3</option>
    <option value='elem_4' selected>elem 4</option>
    ...
    <option value='elem_100'>elem 100</option>
  </select>
  </div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
  <script src="OCUPAR/jquery.multi-select.js"></script>
  <script type="text/javascript">
  // run pre selected options
  $('#pre-selected-options').multiSelect();
  </script>

</body>

</html>
