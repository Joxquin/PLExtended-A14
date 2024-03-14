.class Lcom/android/quickstep/interaction/EdgeBackGesturePanel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/j;


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$1;->this$0:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/m;ZFF)V
    .locals 0

    iget-object p1, p1, Landroidx/dynamicanimation/animation/m;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    if-ltz p3, :cond_0

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$1;->this$0:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
