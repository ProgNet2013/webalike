using System.Data.Entity;

namespace Webalike.Models {
	public class UsersContext : DbContext {
		public UsersContext()
			: base("aspnet_users") {
		}

		public DbSet<UserProfile> UserProfiles { get; set; }
	}
}