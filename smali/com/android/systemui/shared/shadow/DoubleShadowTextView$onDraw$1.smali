.class final Lcom/android/systemui/shared/shadow/DoubleShadowTextView$onDraw$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/a;


# instance fields
.field final synthetic $canvas:Landroid/graphics/Canvas;

.field final synthetic this$0:Lcom/android/systemui/shared/shadow/DoubleShadowTextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextView;Landroid/graphics/Canvas;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView$onDraw$1;->this$0:Lcom/android/systemui/shared/shadow/DoubleShadowTextView;

    iput-object p2, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView$onDraw$1;->$canvas:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView$onDraw$1;->invoke()V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView$onDraw$1;->this$0:Lcom/android/systemui/shared/shadow/DoubleShadowTextView;

    iget-object p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowTextView$onDraw$1;->$canvas:Landroid/graphics/Canvas;

    invoke-static {v0, p0}, Lcom/android/systemui/shared/shadow/DoubleShadowTextView;->access$onDraw$s-938935918(Lcom/android/systemui/shared/shadow/DoubleShadowTextView;Landroid/graphics/Canvas;)V

    return-void
.end method
