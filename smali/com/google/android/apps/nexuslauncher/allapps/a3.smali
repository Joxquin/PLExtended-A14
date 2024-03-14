.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/a3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    sget p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->f0:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/x1;->b(Landroid/content/Context;Z)V

    const/4 p0, 0x1

    return p0
.end method
