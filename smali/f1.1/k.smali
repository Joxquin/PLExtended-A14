.class public final synthetic Lf1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/widget/WidgetsBottomSheet;

.field public final synthetic c:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/WidgetsBottomSheet;Landroid/widget/LinearLayout;I)V
    .locals 0

    iput p3, p0, Lf1/k;->a:I

    iput-object p1, p0, Lf1/k;->b:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    iput-object p2, p0, Lf1/k;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lf1/k;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lf1/k;->b:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    iget-object p0, p0, Lf1/k;->c:Landroid/widget/LinearLayout;

    check-cast p0, Landroid/widget/TableLayout;

    check-cast p1, Ljava/util/ArrayList;

    sget v1, Lcom/android/launcher3/widget/WidgetsBottomSheet;->d:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/widget/TableRow;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setGravity(I)V

    new-instance v2, Lf1/k;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lf1/k;-><init>(Lcom/android/launcher3/widget/WidgetsBottomSheet;Landroid/widget/LinearLayout;I)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    return-void

    :goto_0
    iget-object v0, p0, Lf1/k;->b:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    iget-object p0, p0, Lf1/k;->c:Landroid/widget/LinearLayout;

    check-cast p0, Landroid/widget/TableRow;

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    sget v1, Lcom/android/launcher3/widget/WidgetsBottomSheet;->d:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0151

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/WidgetCell;

    const v2, 0x7f0a03e0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetCell;->setAnimatePreview()V

    const/16 v0, -0x70

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/WidgetCell;->setSourceContainer(I)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p0, Lf1/g;

    invoke-direct {p0, v1}, Lf1/g;-><init>(Lcom/android/launcher3/widget/WidgetCell;)V

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, p1, v2, p0, v0}, Lcom/android/launcher3/widget/WidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;FLjava/util/function/Consumer;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
