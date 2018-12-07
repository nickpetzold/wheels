import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  const swalButton = document.querySelectorAll('.sweet-alert-demo');

  swalButton.forEach((dom) => {
    let form = $(dom).closest('form')
    let url = form.attr('action')

    form.on('submit', (e) => {
      e.preventDefault()
      e.stopPropagation()

      swal({
        title: "Are you sure?",
        text: "Once deleted, you will not be able to recover this imaginary file!",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      }).then((willDelete) => {
        if (willDelete) {
          $.ajax({
            headers: {
              'X-CSRF-Token': $(form).find('[name="authenticity_token"]').val()
            },
            url: `${url}.json`,
            type: "DELETE"
          }).done(function() {
            swal("Poof! Your imaginary file has been deleted!", {
              icon: "success",
            }).then(() => {
              location.reload()
            });
          })
        }
      });
    })
  })
};

export { bindSweetAlertButtonDemo };
