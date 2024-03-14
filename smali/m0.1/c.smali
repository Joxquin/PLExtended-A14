.class public final Lm0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm0/c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Path;)V
    .locals 5

    iget-object p0, p0, Lm0/c;->a:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm0/v;

    sget-object v2, Lw0/h;->a:Lw0/g;

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lm0/v;->a:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lm0/v;->d:Ln0/j;

    invoke-virtual {v2}, Ln0/j;->l()F

    move-result v2

    iget-object v3, v1, Lm0/v;->e:Ln0/j;

    invoke-virtual {v3}, Ln0/j;->l()F

    move-result v3

    iget-object v1, v1, Lm0/v;->f:Ln0/j;

    invoke-virtual {v1}, Ln0/j;->l()F

    move-result v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v1, v4

    invoke-static {v2, v3, v1, p1}, Lw0/h;->a(FFFLandroid/graphics/Path;)V

    goto :goto_0

    :cond_2
    return-void
.end method
