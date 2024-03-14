.class public final synthetic Lcom/android/launcher3/widget/picker/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

.field public final synthetic b:Lcom/android/launcher3/model/WidgetItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/model/WidgetItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/o;->a:Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    iput-object p2, p0, Lcom/android/launcher3/widget/picker/o;->b:Lcom/android/launcher3/model/WidgetItem;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/o;->a:Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/o;->b:Lcom/android/launcher3/model/WidgetItem;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    iget-object p1, v0, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->mDataCallback:Lcom/android/launcher3/widget/picker/q;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/widget/picker/q;->accept(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/E0;->getBindingAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/E0;->getBindingAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/E0;->getBindingAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroidx/recyclerview/widget/Z;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
