.class public final Lm2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic d:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V
    .locals 0

    iput-object p1, p0, Lm2/c;->d:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p2, p0, Lm2/c;->d:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    iget-object p2, p2, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lm2/f;

    if-eqz p2, :cond_1

    instance-of p2, p1, Lw2/g;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lw2/g;

    iget-object p0, p0, Lm2/c;->d:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->f:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p3, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
