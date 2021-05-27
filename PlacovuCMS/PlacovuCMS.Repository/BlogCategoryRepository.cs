using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using PlacovuCMS.Core.Helpers;
using PlacovuCMS.Model;
using PlacovuCMS.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PlacovuCMS.Repository
{
    public class BlogCategoryRepository : IBlogCategoryRepository
    {
        private AppDbContext _context;
        public BlogCategoryRepository()
        {
            _context = new AppDbContext();
        }
        public BlogCategoryRepository(AppDbContext context)
        {
            _context = context;
        }
                
        public async Task<BlogCategory> GetBlogCategoryAsync(int id)
        {
            try
            {
                return await _context.BlogCategory.AsNoTracking().SingleOrDefaultAsync(x => x.Id == id);
            }
            catch(Exception)
            {
                throw;
            }
        }

        public async Task<BlogCategory> GetBlogCategoryByUrlAsync(string url)
        {
            try
            {
                return await _context.BlogCategory.AsNoTracking().SingleOrDefaultAsync(x => x.Url == url);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public async Task<IEnumerable<BlogCategory>> GetBlogCategorysAsync()
        {
            return await _context.BlogCategory.AsNoTracking().ToListAsync();
        }

        public async Task<int> InsertOrUpdatetBlogCategoryAsync(BlogCategory model)
        {
            try
            {
                int result = 0;
                using (AppDbContext context = new AppDbContext())
                {
                    if (model.Id == 0)
                    {
                       await context.BlogCategory.AddAsync(model);
                    }
                    else
                    {
                        context.BlogCategory.Update(model);
                    }
                    result =  await context.SaveChangesAsync();
                }
                return result;
                
            }
            catch(Exception)
            {
                throw;
            }
        }

        public async Task<int> InsertBlogCategoryAsync(BlogCategory model)
        {
            try
            {
                if (model.Id == 0)
                {
                    await _context.BlogCategory.AddAsync(model);
                }
                return await _context.SaveChangesAsync();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public async Task<int> UpdateBlogCategoryAsync(BlogCategory model)
        {
            if (model.Id > 0)
            {
                _context.BlogCategory.Update(model);
            }
            return await _context.SaveChangesAsync();
        }

        public async Task<int> DeleteBlogCategoryAsync(BlogCategory model)
        {
            if (model.Id > 0)
            {
                _context.BlogCategory.Remove(model);
            }
            return await _context.SaveChangesAsync();
        }
        public async Task<List<SelectListItem>> GetActiveCategory()
        {
            try
            {
                List<SelectListItem> activeBlogCategory = new List<SelectListItem>();
                activeBlogCategory = await _context.BlogCategory.Where(x => x.Status == true).Select(x => new SelectListItem { Text = x.Name, Value = x.Id.ToString() }).ToListAsync();
                return activeBlogCategory;
            }
            catch(Exception)
            {
                throw;
            }
        }

    }

    public interface IBlogCategoryRepository
    {
        Task<BlogCategory> GetBlogCategoryAsync(int id);
        Task<BlogCategory> GetBlogCategoryByUrlAsync(string url);
        Task<IEnumerable<BlogCategory>> GetBlogCategorysAsync();
        Task<int> InsertOrUpdatetBlogCategoryAsync(BlogCategory model);
        Task<int> InsertBlogCategoryAsync(BlogCategory model);
        Task<int> UpdateBlogCategoryAsync(BlogCategory model);
        Task<int> DeleteBlogCategoryAsync(BlogCategory model);
        Task<List<SelectListItem>> GetActiveCategory();
    }
}
