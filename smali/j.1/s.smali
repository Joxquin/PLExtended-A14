.class public Lj/s;
.super Landroidx/core/view/c;
.source "SourceFile"


# instance fields
.field public final b:Landroid/view/ActionProvider;

.field public final synthetic c:Lj/x;


# direct methods
.method public constructor <init>(Lj/x;Landroid/view/ActionProvider;)V
    .locals 0

    iput-object p1, p0, Lj/s;->c:Lj/x;

    invoke-direct {p0}, Landroidx/core/view/c;-><init>()V

    iput-object p2, p0, Lj/s;->b:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lj/s;->b:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result p0

    return p0
.end method

.method public final c()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lj/s;->b:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lj/s;->b:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result p0

    return p0
.end method

.method public final f(Lj/L;)V
    .locals 1

    iget-object v0, p0, Lj/s;->c:Lj/x;

    invoke-virtual {v0, p1}, Lj/c;->d(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    iget-object p0, p0, Lj/s;->b:Landroid/view/ActionProvider;

    invoke-virtual {p0, p1}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    return-void
.end method
