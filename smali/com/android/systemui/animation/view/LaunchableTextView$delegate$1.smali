.class final Lcom/android/systemui/animation/view/LaunchableTextView$delegate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/l;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/animation/view/b;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/view/LaunchableTextView$delegate$1;->this$0:Lcom/android/systemui/animation/view/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/animation/view/LaunchableTextView$delegate$1;->this$0:Lcom/android/systemui/animation/view/b;

    invoke-static {p0, p1}, Lcom/android/systemui/animation/view/b;->i(Lcom/android/systemui/animation/view/b;I)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
