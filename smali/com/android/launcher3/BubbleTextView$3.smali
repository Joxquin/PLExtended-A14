.class final Lcom/android/launcher3/BubbleTextView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/BubbleTextView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BubbleTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView$3;->this$0:Lcom/android/launcher3/BubbleTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView$3;->this$0:Lcom/android/launcher3/BubbleTextView;

    invoke-static {p0}, Lcom/android/launcher3/BubbleTextView;->j(Lcom/android/launcher3/BubbleTextView;)V

    return-void
.end method