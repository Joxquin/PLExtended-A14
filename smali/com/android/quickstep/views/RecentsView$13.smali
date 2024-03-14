.class Lcom/android/quickstep/views/RecentsView$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/SplitSelectionListener;


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$13;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSplitSelectionActive()V
    .locals 0

    return-void
.end method

.method public onSplitSelectionConfirmed()V
    .locals 0

    return-void
.end method

.method public onSplitSelectionExit(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$13;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetFromSplitSelectionState()V

    return-void
.end method
