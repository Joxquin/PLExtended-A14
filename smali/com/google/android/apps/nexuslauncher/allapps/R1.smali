.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/R1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/R1;->d:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/R1;->d:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->n:Landroid/app/search/SearchTarget;

    const/4 v0, 0x5

    invoke-static {p1, p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->g(Lcom/google/android/apps/nexuslauncher/allapps/y0;Landroid/app/search/SearchTarget;I)V

    return-void
.end method
