class ConstantUri {
  ConstantUri._();
  static const baseUri = "http://127.0.0.1:30033";
  static const loginPath = "$baseUri/api/oauth/token";
  static const registerPath = "$baseUri/api/oauth/register";
  static const refreshTokenPath = "$baseUri/api/oauth/refresh";
  static const postCategoryPath = "$baseUri/api/app/post/category";
}
