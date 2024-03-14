.class public abstract Lj/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lq/m;

.field public c:Lq/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    instance-of v0, p1, LG/b;

    if-eqz v0, :cond_2

    check-cast p1, LG/b;

    iget-object v0, p0, Lj/c;->b:Lq/m;

    if-nez v0, :cond_0

    new-instance v0, Lq/m;

    invoke-direct {v0}, Lq/m;-><init>()V

    iput-object v0, p0, Lj/c;->b:Lq/m;

    :cond_0
    iget-object v0, p0, Lj/c;->b:Lq/m;

    invoke-virtual {v0, p1}, Lq/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    if-nez v0, :cond_1

    new-instance v0, Lj/x;

    iget-object v1, p0, Lj/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lj/x;-><init>(Landroid/content/Context;LG/b;)V

    iget-object p0, p0, Lj/c;->b:Lq/m;

    invoke-virtual {p0, p1, v0}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method public final d(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    instance-of v0, p1, LG/c;

    if-eqz v0, :cond_2

    check-cast p1, LG/c;

    iget-object v0, p0, Lj/c;->c:Lq/m;

    if-nez v0, :cond_0

    new-instance v0, Lq/m;

    invoke-direct {v0}, Lq/m;-><init>()V

    iput-object v0, p0, Lj/c;->c:Lq/m;

    :cond_0
    iget-object v0, p0, Lj/c;->c:Lq/m;

    invoke-virtual {v0, p1}, Lq/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_1

    new-instance v0, Lj/M;

    iget-object v1, p0, Lj/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lj/M;-><init>(Landroid/content/Context;LG/c;)V

    iget-object p0, p0, Lj/c;->c:Lq/m;

    invoke-virtual {p0, p1, v0}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method
