.class public final LK2/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LK2/C;


# direct methods
.method public synthetic constructor <init>(LK2/C;I)V
    .locals 0

    iput p2, p0, LK2/B;->a:I

    iput-object p1, p0, LK2/B;->b:LK2/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .locals 1

    iget v0, p0, LK2/B;->a:I

    iget-object p0, p0, LK2/B;->b:LK2/C;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LK2/C;->s:Ln1/f;

    invoke-static {p0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ln1/f;->a(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    return-void

    :goto_0
    iget-object p0, p0, LK2/C;->s:Ln1/f;

    invoke-static {p0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ln1/f;->a(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
