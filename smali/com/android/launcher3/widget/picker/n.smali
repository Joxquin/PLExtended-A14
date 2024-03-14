.class public final synthetic Lcom/android/launcher3/widget/picker/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;

.field public final synthetic e:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

.field public final synthetic f:Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;Lcom/android/launcher3/widget/picker/WidgetsListHeader;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/n;->d:Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;

    iput-object p2, p0, Lcom/android/launcher3/widget/picker/n;->e:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    iput-object p3, p0, Lcom/android/launcher3/widget/picker/n;->f:Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/n;->d:Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/n;->e:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/n;->f:Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    invoke-static {p1, v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->a(Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;Lcom/android/launcher3/widget/picker/WidgetsListHeader;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V

    return-void
.end method
