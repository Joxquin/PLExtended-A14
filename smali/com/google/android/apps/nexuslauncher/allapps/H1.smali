.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/H1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

.field public final synthetic b:Landroid/graphics/drawable/Icon;

.field public final synthetic c:Lcom/google/android/apps/nexuslauncher/allapps/g1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;Landroid/graphics/drawable/Icon;Lcom/google/android/apps/nexuslauncher/allapps/q0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/H1;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/H1;->b:Landroid/graphics/drawable/Icon;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/H1;->c:Lcom/google/android/apps/nexuslauncher/allapps/g1;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/H1;->a:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/H1;->b:Landroid/graphics/drawable/Icon;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/H1;->c:Lcom/google/android/apps/nexuslauncher/allapps/g1;

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->D:Lcom/google/android/apps/nexuslauncher/allapps/E1;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->v(Landroid/graphics/drawable/Icon;Lcom/google/android/apps/nexuslauncher/allapps/g1;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method
