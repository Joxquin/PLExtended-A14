.class public final synthetic LY1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/search/SearchEditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY1/s;->a:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, LY1/s;->a:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    check-cast p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    sget-boolean v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->y:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    iget p0, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->c:I

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->h(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
