export function getAssetPath(path) {
  // 从Vite注入的环境变量中获取base配置
  // 开发环境默认是 '/', 生产环境由vite.config.js中的base决定
  const base = import.meta.env.BASE_URL || '/';
  
  // 处理路径拼接，避免重复的斜杠
  const normalizedBase = base.endsWith('/') ? base : `${base}/`;
  const normalizedPath = path.startsWith('/') ? path.slice(1) : path;
  
  return `${normalizedBase}${normalizedPath}`;
}