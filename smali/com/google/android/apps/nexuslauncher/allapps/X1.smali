.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/X1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/X1;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/X1;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/X1;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/X1;->b:Ljava/util/List;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->mTileSpec:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/search/SearchTarget;

    invoke-virtual {p0}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "tileSpec"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
