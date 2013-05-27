using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Webalike.Models {
	[Table("Article")]
	public class Article {
		[Key]
		[DatabaseGeneratedAttribute(DatabaseGeneratedOption.Identity)]
		public int ArticleId { get; set; }
		public string Headline { get; set; }
		public string Synopsis { get; set; }
		public string LinkUrl { get; set; }
		public DateTime PostedAtUtc {
			get;
			set;
		}
	}
}
