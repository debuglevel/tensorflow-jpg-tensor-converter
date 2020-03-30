# TensorFlow JPEG to Tensor converter

This microservice takes a picture file and returns it as a TensorFlow tensor.

Some TensorFlow model accept JPEG as input, others do not. They expect a tensor as input.

Unfortunately, installing the Python `tensorflow` package wastes over 500 MB and slows down application startup. Therefore it's not that nice to "just install the tensorflow package" to convert a JPEG into a tensor to send it to TensorFlow Serving afterwards.

# Usage

## POST JPEG

```
curl -X POST -H "Content-Type: image/jpeg" --data-binary @1.jpg "http://localhost:5000/pictures/?height=224&width=224"

{
  "tensor": [
    [
      [
        0.96875,
        0.96484375,
        0.98828125
      ],

        ...
        lots of stuff
        ...

      [
        1.0,
        1.0,
        1.0
      ]
    ]
  ]
}
```
