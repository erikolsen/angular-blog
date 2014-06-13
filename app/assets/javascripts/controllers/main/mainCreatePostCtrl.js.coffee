@CreatePostCtrl = ($scope, $location, postData) ->

  $scope.data = postData.data
  postData.loadPosts(null)

  $scope.createPost = ->
    postData.createPost($scope.formData)
    console.log($scope.formData)

  $scope.clearPost = ->
    $scope.formData.newPostTitle = ''
    $scope.formData.newPostContents = ''
    
  $scope.formData =
    newPostTitle: ''
    newPostContents: ''

  $scope.navNewPost = ->
    $location.url('/post/new')

  $scope.navHome = ->
    $location.url('/')

@CreatePostCtrl.$inject = ['$scope', '$location', 'postData']

