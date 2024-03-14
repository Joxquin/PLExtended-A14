.class public final synthetic Lcom/android/launcher3/widget/picker/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;

.field public final synthetic b:Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

.field public final synthetic c:Lcom/android/launcher3/widget/model/WidgetsListContentEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/q;->a:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;

    iput-object p2, p0, Lcom/android/launcher3/widget/picker/q;->b:Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    iput-object p3, p0, Lcom/android/launcher3/widget/picker/q;->c:Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/q;->a:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/q;->b:Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/q;->c:Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    check-cast p1, Landroid/util/Pair;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->q(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p0, v2, p1}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->bindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;ILjava/util/List;)V

    return-void
.end method
