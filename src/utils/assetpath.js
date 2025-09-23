// src/utils/assetPath.js
/**
 * 拼接 Vite 的 BASE_URL 和资源路径
 * @param {string} relativePath - 相对于 public 目录的路径（无需开头斜杠）
 * @returns {string} 完整资源路径
 */
export const getAssetPath = (relativePath) => {
  // import.meta.env.BASE_URL 由 Vite 自动注入，开发时为 "/"，生产时为 "/SCUT-SFA/"
  return import.meta.env.BASE_URL + relativePath;
};