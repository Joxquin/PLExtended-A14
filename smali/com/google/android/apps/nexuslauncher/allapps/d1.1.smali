.class public final Lcom/google/android/apps/nexuslauncher/allapps/d1;
.super Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
.source "SourceFile"


# instance fields
.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/g1;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/g1;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/d1;->e:Lcom/google/android/apps/nexuslauncher/allapps/g1;

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/d1;->d:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public final getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/d1;->e:Lcom/google/android/apps/nexuslauncher/allapps/g1;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/g1;->f:Landroid/graphics/drawable/Icon;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d1;->d:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x10d0000

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/d1;->e:Lcom/google/android/apps/nexuslauncher/allapps/g1;

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final startConfigActivity(Landroid/app/Activity;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
