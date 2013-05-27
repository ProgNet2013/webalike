using System.Collections.Generic;
using System.Data.Entity;
using System.Globalization;
using System.Web.Security;

namespace Webalike.Models {

	public class ArticleContext : DbContext {
		public ArticleContext()
			: base("webalike") {
		}
		public DbSet<Article> Articles { get; set; }
	}
}