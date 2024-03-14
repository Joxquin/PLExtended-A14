.class public final synthetic Landroidx/fragment/app/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/d;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/P;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/P;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/L;->a:Landroidx/fragment/app/P;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/L;->a:Landroidx/fragment/app/P;

    invoke-static {p0}, Landroidx/fragment/app/P;->j(Landroidx/fragment/app/P;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
