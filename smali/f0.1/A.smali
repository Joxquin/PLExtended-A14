.class public final Lf0/A;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final m:[I


# instance fields
.field public d:Landroidx/slice/core/a;

.field public e:Lf0/c;

.field public f:Lf0/M;

.field public g:Lf0/E;

.field public h:Landroid/view/View;

.field public i:Landroid/widget/ProgressBar;

.field public final j:I

.field public final k:I

.field public final l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lf0/A;->m:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf0/q;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070048

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lf0/A;->j:I

    const v0, 0x7f070057

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lf0/A;->k:I

    const/4 p1, 0x0

    iput p1, p0, Lf0/A;->l:I

    if-eqz p2, :cond_0

    iget p1, p2, Lf0/q;->t:I

    iput p1, p0, Lf0/A;->j:I

    iget p1, p2, Lf0/q;->v:I

    iput p1, p0, Lf0/A;->k:I

    iget p1, p2, Lf0/q;->s:I

    iput p1, p0, Lf0/A;->l:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lf0/A;->d:Landroidx/slice/core/a;

    if-eqz v0, :cond_7

    iget-object v1, v0, Landroidx/slice/core/a;->a:Landroidx/slice/SliceItem;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0}, Landroidx/slice/core/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf0/A;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lf0/A;->e:Lf0/c;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, v3, Lf0/c;->h:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    iget-object v0, p0, Lf0/A;->d:Landroidx/slice/core/a;

    iget-object v0, v0, Landroidx/slice/core/a;->a:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroidx/slice/SliceItem;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lf0/A;->c()V

    iget-object v0, p0, Lf0/A;->g:Lf0/E;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lf0/A;->e:Lf0/c;

    if-eqz v2, :cond_4

    iget v2, v2, Lf0/c;->d:I

    goto :goto_2

    :cond_4
    const/4 v2, -0x1

    :goto_2
    iget-object v3, p0, Lf0/A;->d:Landroidx/slice/core/a;

    iget-object v3, v3, Landroidx/slice/core/a;->i:Landroidx/slice/SliceItem;

    invoke-virtual {v0, v3, v2}, Lf0/E;->c(Landroidx/slice/SliceItem;I)V

    :cond_5
    iget-object v0, p0, Lf0/A;->f:Lf0/M;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lf0/A;->e:Lf0/c;

    if-eqz v2, :cond_7

    iget-object v3, p0, Lf0/A;->d:Landroidx/slice/core/a;

    iget-object v3, v3, Landroidx/slice/core/a;->i:Landroidx/slice/SliceItem;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->k(Landroidx/slice/SliceItem;Lf0/c;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    iget-object p0, p0, Lf0/A;->h:Landroid/view/View;

    instance-of v2, p0, Landroid/widget/Checkable;

    if-eqz v2, :cond_6

    move-object v2, p0

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_6
    const-string p0, "SliceActionView"

    const-string v1, "PendingIntent for slice cannot be sent"

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_3
    return-void
.end method

.method public final b(Landroidx/slice/core/a;Lf0/c;Lf0/M;ILf0/E;)V
    .locals 4

    iget-object v0, p0, Lf0/A;->h:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lf0/A;->h:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lf0/A;->i:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lf0/A;->i:Landroid/widget/ProgressBar;

    :cond_1
    iput-object p1, p0, Lf0/A;->d:Landroidx/slice/core/a;

    iput-object p2, p0, Lf0/A;->e:Lf0/c;

    iput-object p3, p0, Lf0/A;->f:Lf0/M;

    iput-object v1, p0, Lf0/A;->h:Landroid/view/View;

    iput-object p5, p0, Lf0/A;->g:Lf0/E;

    invoke-virtual {p1}, Landroidx/slice/core/a;->d()Z

    move-result p2

    const/4 p3, 0x0

    const/4 p5, -0x1

    iget-object v0, p1, Landroidx/slice/core/a;->d:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroidx/slice/core/a;->g:Z

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0d002c

    invoke-virtual {p2, v2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget p3, p0, Lf0/A;->k:I

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setMinimumHeight(I)V

    iget p3, p0, Lf0/A;->k:I

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setMinimumWidth(I)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eq p4, p5, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const p5, 0x1010030

    invoke-static {p5, p3}, Lf0/P;->b(ILandroid/content/Context;)I

    move-result p3

    new-instance p5, Landroid/content/res/ColorStateList;

    sget-object v1, Lf0/A;->m:[I

    sget-object v2, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    filled-new-array {v1, v2}, [[I

    move-result-object v3

    filled-new-array {p4, p3}, [I

    move-result-object p3

    invoke-direct {p5, v3, p3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p2}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3, p5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const p5, 0x7f040149

    invoke-static {p5, p3}, Lf0/P;->b(ILandroid/content/Context;)I

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object p5, LB/c;->a:Ljava/lang/Object;

    const p5, 0x7f060337

    invoke-virtual {p3, p5}, Landroid/content/Context;->getColor(I)I

    move-result p3

    :cond_2
    new-instance p5, Landroid/content/res/ColorStateList;

    filled-new-array {v1, v2}, [[I

    move-result-object v1

    filled-new-array {p4, p3}, [I

    move-result-object p3

    invoke-direct {p5, v1, p3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p2}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3, p5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iput-object p2, p0, Lf0/A;->h:Landroid/view/View;

    goto/16 :goto_2

    :cond_4
    const/4 p2, 0x6

    iget v2, p1, Landroidx/slice/core/a;->c:I

    if-ne v2, p2, :cond_5

    new-instance p2, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lf0/A;->h:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lf0/A;->h:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lf0/A;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p3, p0, Lf0/A;->h:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p2, p0, Lf0/A;->l:I

    iget-object p3, p0, Lf0/A;->h:Landroid/view/View;

    invoke-virtual {p3, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p2, p0, Lf0/A;->h:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_5
    iget-object p2, p1, Landroidx/slice/core/a;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Landroidx/slice/core/a;->b()Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Lf0/z;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3}, Lf0/z;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Lf0/z;->setChecked(Z)V

    iput-object p2, p0, Lf0/A;->h:Landroid/view/View;

    goto :goto_0

    :cond_6
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lf0/A;->h:Landroid/view/View;

    :goto_0
    iget-object p2, p0, Lf0/A;->h:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lf0/A;->d:Landroidx/slice/core/a;

    iget-object p2, p2, Landroidx/slice/core/a;->b:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/graphics/drawable/IconCompat;->h(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v1, p0, Lf0/A;->h:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eq p4, p5, :cond_7

    iget-object v1, p0, Lf0/A;->d:Landroidx/slice/core/a;

    iget v1, v1, Landroidx/slice/core/a;->c:I

    if-nez v1, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_7
    iget-object p2, p0, Lf0/A;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iget p4, p0, Lf0/A;->k:I

    iput p4, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p4, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p4, p0, Lf0/A;->h:Landroid/view/View;

    invoke-virtual {p4, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v2, :cond_9

    iget p2, p0, Lf0/A;->k:I

    if-ne p2, p5, :cond_8

    iget p2, p0, Lf0/A;->j:I

    goto :goto_1

    :cond_8
    iget p3, p0, Lf0/A;->j:I

    sub-int/2addr p2, p3

    :goto_1
    div-int/lit8 p3, p2, 0x2

    :cond_9
    iget-object p2, p0, Lf0/A;->h:Landroid/view/View;

    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    iget-object p2, p0, Lf0/A;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const p4, 0x101045c

    invoke-static {p4, p3}, Lf0/P;->c(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lf0/A;->h:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    :goto_2
    iget-object p0, p0, Lf0/A;->h:Landroid/view/View;

    if-eqz p0, :cond_c

    iget-object p1, p1, Landroidx/slice/core/a;->e:Ljava/lang/CharSequence;

    if-eqz p1, :cond_b

    move-object v0, p1

    :cond_b
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lf0/A;->i:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0023

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lf0/A;->i:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lf0/A;->i:Landroid/widget/ProgressBar;

    const v3, 0x7f04012a

    invoke-static {v3, v0}, Lf0/P;->b(ILandroid/content/Context;)I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lf0/A;->h:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lf0/A;->i:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lf0/A;->d:Landroidx/slice/core/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lf0/A;->h:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf0/A;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lf0/A;->d:Landroidx/slice/core/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lf0/A;->h:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf0/A;->a()V

    :cond_1
    :goto_0
    return-void
.end method
