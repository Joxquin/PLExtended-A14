.class public final LU1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LU1/c;


# direct methods
.method public constructor <init>(LU1/c;)V
    .locals 0

    iput-object p1, p0, LU1/b;->d:LU1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, LU1/b;->d:LU1/c;

    const/4 v0, 0x0

    iput-object v0, p0, LU1/c;->i:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    return-void
.end method
