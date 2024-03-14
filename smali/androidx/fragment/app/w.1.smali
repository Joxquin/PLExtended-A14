.class public final synthetic Landroidx/fragment/app/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Landroidx/fragment/app/K;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/K;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/w;->d:Landroidx/fragment/app/K;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/w;->d:Landroidx/fragment/app/K;

    invoke-static {p0}, Landroidx/fragment/app/K;->a(Landroidx/fragment/app/K;)V

    return-void
.end method
