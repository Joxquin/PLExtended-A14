.class final Lcom/android/launcher3/settings/PreferenceHighlighter$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field final synthetic this$0:Lcom/android/launcher3/settings/PreferenceHighlighter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/settings/PreferenceHighlighter;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/settings/PreferenceHighlighter$2;->d:I

    iput-object p1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter$2;->this$0:Lcom/android/launcher3/settings/PreferenceHighlighter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter$2;->d:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter$2;->this$0:Lcom/android/launcher3/settings/PreferenceHighlighter;

    invoke-static {p0}, Lcom/android/launcher3/settings/PreferenceHighlighter;->d(Lcom/android/launcher3/settings/PreferenceHighlighter;)V

    return-void

    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter$2;->this$0:Lcom/android/launcher3/settings/PreferenceHighlighter;

    invoke-static {p1}, Lcom/android/launcher3/settings/PreferenceHighlighter;->b(Lcom/android/launcher3/settings/PreferenceHighlighter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter$2;->this$0:Lcom/android/launcher3/settings/PreferenceHighlighter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/i0;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
