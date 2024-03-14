.class public final synthetic LC0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;I)V
    .locals 0

    iput p4, p0, LC0/c;->d:I

    iput-object p1, p0, LC0/c;->e:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, LC0/c;->f:Landroid/view/View;

    iput-object p3, p0, LC0/c;->g:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget p1, p0, LC0/c;->d:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, LC0/c;->e:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, p0, LC0/c;->f:Landroid/view/View;

    iget-object p0, p0, LC0/c;->g:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {p1, v1, p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->c(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return v0

    :pswitch_1
    iget-object p1, p0, LC0/c;->e:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, p0, LC0/c;->f:Landroid/view/View;

    iget-object p0, p0, LC0/c;->g:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {p1, v1, p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->d(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return v0

    :pswitch_2
    iget-object p1, p0, LC0/c;->e:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, p0, LC0/c;->f:Landroid/view/View;

    iget-object p0, p0, LC0/c;->g:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {p1, v1, p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->a(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return v0

    :goto_0
    iget-object p1, p0, LC0/c;->e:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, p0, LC0/c;->f:Landroid/view/View;

    iget-object p0, p0, LC0/c;->g:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {p1, v1, p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->b(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
