.class public final Lcom/google/android/apps/nexuslauncher/allapps/s2;
.super Lcom/google/android/apps/nexuslauncher/allapps/r2;
.source "SourceFile"


# instance fields
.field public final p:I

.field public final q:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/r2;II)V
    .locals 3

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/allapps/r2;->c:Landroid/content/Context;

    iget v1, p1, Lcom/google/android/apps/nexuslauncher/allapps/r2;->k:I

    iget-boolean v2, p1, Lcom/google/android/apps/nexuslauncher/allapps/r2;->m:Z

    iget-boolean p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/r2;->l:Z

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/apps/nexuslauncher/allapps/r2;-><init>(Landroid/content/Context;IZZ)V

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/s2;->p:I

    iput p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/s2;->q:I

    return-void
.end method
