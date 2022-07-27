<div class="container">
  <div class="row">
    <div class="mt-3">
      <form action="/apply" method="post">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
          ADD STUDENT
        </button>
        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">NEW STUDENT</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                <div class="row mt-3">
                  <div class="col-12">
                    <label>NAME:</label>
                  </div>
                </div>
                <div class="row mt-2">
                  <div class="col-12">
                    <input type="text" class="form-control" name="student_name" required placeholder="INSERT  NAME">
                  </div>
                </div>
                <div class="row mt-3">
                  <div class="col-12">
                    <label>SURNAME:</label>
                  </div>
                </div>
                <div class="row mt-2">
                  <div class="col-12">
                    <input type="text" class="form-control" name="student_surname" required placeholder="INSERT  SURNAME">
                  </div>
                </div>
                <div class="row mt-3">
                  <div class="col-12">
                    <label>BIRTHDAY:</label>
                  </div>
                </div>
                <div class="row mt-2">
                  <div class="col-12">
                    <input type="date" class="form-control" name="student_birthday" required placeholder="INSERT BIRTHDAY">
                  </div>
                </div>
                <div class="row mt-3">
                  <div class="col-12">
                    <label>CITY :</label>
                  </div>
                </div>
                <div class="row mt-2">
                  <div class="col-12">
                    <input type="text" class="form-control" name="student_city" required placeholder="INSERT  CITY">
                  </div>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                  <button  class="btn btn-primary">ADD STUDENT</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
