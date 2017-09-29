using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Farfaded.Data;
using Farfaded.Models;

namespace Farfaded.Controllers
{
    public class QuistionsController : Controller
    {
        private QuistionsContext db = new QuistionsContext();

        // GET: Quistions
        public async Task<ActionResult> Index()
        {
            return View(await db.Quistions.ToListAsync());
        }

        

        // GET: Quistions/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Quistion quistion = await db.Quistions.FindAsync(id);
            if (quistion == null)
            {
                return HttpNotFound();
            }
            return View(quistion);
        }

        // GET: Quistions/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Quistions/Create
        // Чтобы защититься от атак чрезмерной передачи данных, включите определенные свойства, для которых следует установить привязку. Дополнительные 
        // сведения см. в статье https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "IdQuestion,IdFlat,Question,Answer,Status")] Quistion quistion)
        {
            if (ModelState.IsValid)
            {
                db.Quistions.Add(quistion);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(quistion);
        }

        // GET: Quistions/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Quistion quistion = await db.Quistions.FindAsync(id);
            if (quistion == null)
            {
                return HttpNotFound();
            }
            return View(quistion);
        }

        // POST: Quistions/Edit/5
        // Чтобы защититься от атак чрезмерной передачи данных, включите определенные свойства, для которых следует установить привязку. Дополнительные 
        // сведения см. в статье https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "IdQuestion,IdFlat,Question,Answer,Status")] Quistion quistion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(quistion).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(quistion);
        }

        // GET: Quistions/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Quistion quistion = await db.Quistions.FindAsync(id);
            if (quistion == null)
            {
                return HttpNotFound();
            }
            return View(quistion);
        }

        // POST: Quistions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Quistion quistion = await db.Quistions.FindAsync(id);
            db.Quistions.Remove(quistion);
            await db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
