.class public final synthetic Landroidx/fragment/app/R0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/c;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/S0;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/S0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/R0;->a:Landroidx/fragment/app/S0;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    const-string v0, "this$0"

    iget-object p0, p0, Landroidx/fragment/app/R0;->a:Landroidx/fragment/app/S0;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/S0;->a()V

    return-void
.end method
