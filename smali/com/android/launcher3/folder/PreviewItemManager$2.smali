.class final Lcom/android/launcher3/folder/PreviewItemManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/PreviewItemManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/PreviewItemManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager$2;->this$0:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewItemManager$2;->this$0:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-static {p0}, Lcom/android/launcher3/folder/PreviewItemManager;->b(Lcom/android/launcher3/folder/PreviewItemManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
