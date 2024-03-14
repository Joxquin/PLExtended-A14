.class public final Lo2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/button/MaterialButton;

.field public b:LC2/n;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroid/graphics/PorterDuff$Mode;

.field public i:Landroid/content/res/ColorStateList;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/content/res/ColorStateList;

.field public l:LC2/i;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Landroid/graphics/drawable/LayerDrawable;

.field public r:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;LC2/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo2/d;->m:Z

    iput-boolean v0, p0, Lo2/d;->n:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo2/d;->p:Z

    iput-object p1, p0, Lo2/d;->a:Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lo2/d;->b:LC2/n;

    return-void
.end method


# virtual methods
.method public final a()LC2/y;
    .locals 3

    iget-object v0, p0, Lo2/d;->q:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lo2/d;->q:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    iget-object p0, p0, Lo2/d;->q:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, LC2/y;

    return-object p0

    :cond_0
    iget-object p0, p0, Lo2/d;->q:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, LC2/y;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Z)LC2/i;
    .locals 1

    iget-object v0, p0, Lo2/d;->q:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lo2/d;->q:Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, LC2/i;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(LC2/n;)V
    .locals 2

    iput-object p1, p0, Lo2/d;->b:LC2/n;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo2/d;->b(Z)LC2/i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lo2/d;->b(Z)LC2/i;

    move-result-object v0

    invoke-virtual {v0, p1}, LC2/i;->b(LC2/n;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo2/d;->b(Z)LC2/i;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lo2/d;->b(Z)LC2/i;

    move-result-object v0

    invoke-virtual {v0, p1}, LC2/i;->b(LC2/n;)V

    :cond_1
    invoke-virtual {p0}, Lo2/d;->a()LC2/y;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lo2/d;->a()LC2/y;

    move-result-object p0

    invoke-interface {p0, p1}, LC2/y;->b(LC2/n;)V

    :cond_2
    return-void
.end method
