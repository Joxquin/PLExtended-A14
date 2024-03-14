.class public final synthetic Lf1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/widget/WidgetCell;

.field public final synthetic e:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/WidgetCell;Lcom/android/launcher3/widget/NavigableAppWidgetHostView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/h;->d:Lcom/android/launcher3/widget/WidgetCell;

    iput-object p2, p0, Lf1/h;->e:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lf1/h;->d:Lcom/android/launcher3/widget/WidgetCell;

    iget-object p0, p0, Lf1/h;->e:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-static {p1, p0}, Lcom/android/launcher3/widget/WidgetCell;->b(Lcom/android/launcher3/widget/WidgetCell;Lcom/android/launcher3/widget/NavigableAppWidgetHostView;)V

    return-void
.end method
