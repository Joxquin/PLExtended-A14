.class final Lcom/android/launcher3/views/ClipIconView$2;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/views/ClipIconView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/ClipIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/views/ClipIconView$2;->this$0:Lcom/android/launcher3/views/ClipIconView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/views/ClipIconView$2;->this$0:Lcom/android/launcher3/views/ClipIconView;

    invoke-static {p1}, Lcom/android/launcher3/views/ClipIconView;->a(Lcom/android/launcher3/views/ClipIconView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/views/ClipIconView$2;->this$0:Lcom/android/launcher3/views/ClipIconView;

    invoke-static {p0}, Lcom/android/launcher3/views/ClipIconView;->b(Lcom/android/launcher3/views/ClipIconView;)F

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
