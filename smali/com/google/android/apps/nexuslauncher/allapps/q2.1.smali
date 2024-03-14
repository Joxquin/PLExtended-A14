.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/widget/WidgetCell;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/WidgetCell;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/q2;->a:Lcom/android/launcher3/widget/WidgetCell;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/q2;->a:Lcom/android/launcher3/widget/WidgetCell;

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lf1/g;

    invoke-direct {v0, p0}, Lf1/g;-><init>(Lcom/android/launcher3/widget/WidgetCell;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/launcher3/widget/WidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;FLjava/util/function/Consumer;Landroid/graphics/Bitmap;)V

    return-void
.end method
