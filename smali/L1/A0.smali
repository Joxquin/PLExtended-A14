.class public final LL1/A0;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final synthetic m:I


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Landroid/widget/ImageButton;

.field public final f:Landroid/widget/TextView;

.field public g:F

.field public h:F

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Landroid/view/ActionMode;

.field public l:LL1/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v1, p0, LL1/A0;->i:Z

    iput-object p1, p0, LL1/A0;->d:Landroid/content/Context;

    const v0, 0x7f0d014b

    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v0, 0x7f0a03c1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LL1/A0;->f:Landroid/widget/TextView;

    const v0, 0x7f0a03bf

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, LL1/A0;->e:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    new-instance v0, Landroid/view/View$DragShadowBuilder;

    iget-object v1, p0, LL1/A0;->e:Landroid/widget/ImageButton;

    invoke-direct {v0, v1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    new-instance v1, Landroid/content/ClipData$Item;

    iget-object v2, p0, LL1/A0;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/content/ClipDescription;

    const-string v3, "text/plain"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "dragToShareUrl"

    invoke-direct {v2, v4, v3}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v3, Landroid/content/ClipData;

    invoke-direct {v3, v2, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    iget-object v1, p0, LL1/A0;->e:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/widget/ImageButton;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    iget-object v0, p0, LL1/A0;->k:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    iput-object v2, p0, LL1/A0;->k:Landroid/view/ActionMode;

    :goto_0
    iget-object v0, p0, LL1/A0;->l:LL1/w;

    iget-object v0, v0, LL1/w;->x:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    iput-boolean v4, p0, LL1/A0;->i:Z

    return-void
.end method

.method public final b(Z)V
    .locals 3

    iget-object v0, p0, LL1/A0;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, LL1/A0;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, LL1/A0;->e:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iput-boolean p1, p0, LL1/A0;->i:Z

    if-nez p1, :cond_3

    iget-object p1, p0, LL1/A0;->k:Landroid/view/ActionMode;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 p1, 0x0

    iput-object p1, p0, LL1/A0;->k:Landroid/view/ActionMode;

    :cond_3
    :goto_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, LL1/A0;->k:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, LL1/A0;->k:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method
