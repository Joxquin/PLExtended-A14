.class public final Lcom/google/android/apps/nexuslauncher/allapps/I2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/apps/nexuslauncher/allapps/r2;

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/search/SearchTarget;Landroid/app/search/SearchTarget;Landroid/app/search/SearchTarget;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lz0/f;->f(Landroid/app/search/SearchTarget;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "group_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-static {p2}, Lz0/f;->a(Landroid/app/search/SearchTarget;)Ljava/lang/String;

    move-result-object v3

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_2

    invoke-static {p3}, Lz0/f;->a(Landroid/app/search/SearchTarget;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Lz0/f;->a(Landroid/app/search/SearchTarget;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/2addr p3, v1

    iput-boolean p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/I2;->d:Z

    invoke-static {v3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/2addr p3, v1

    iput-boolean p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/I2;->e:Z

    const/16 p3, 0xff

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/I2;->d:Z

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/I2;->e:Z

    move p3, v2

    :goto_2
    iput-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/I2;->a:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    if-eqz p4, :cond_3

    const-string v0, "decorate_together"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_4

    :cond_3
    const-string p4, "thumbnail"

    invoke-virtual {p2}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    iput-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/I2;->c:Z

    new-instance p2, Lcom/google/android/apps/nexuslauncher/allapps/r2;

    iget-boolean p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/I2;->d:Z

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/I2;->e:Z

    invoke-direct {p2, p1, p3, p4, v0}, Lcom/google/android/apps/nexuslauncher/allapps/r2;-><init>(Landroid/content/Context;IZZ)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/I2;->b:Lcom/google/android/apps/nexuslauncher/allapps/r2;

    return-void
.end method
