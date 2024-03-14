.class final Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/l;


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/LaunchableConstraintLayout;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/LaunchableConstraintLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;->this$0:Lcom/android/quickstep/views/LaunchableConstraintLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;->invoke(I)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/quickstep/views/LaunchableConstraintLayout$delegate$1;->this$0:Lcom/android/quickstep/views/LaunchableConstraintLayout;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/LaunchableConstraintLayout;->access$setVisibility$s2114496391(Lcom/android/quickstep/views/LaunchableConstraintLayout;I)V

    return-void
.end method
