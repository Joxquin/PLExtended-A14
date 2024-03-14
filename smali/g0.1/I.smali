.class public final Lg0/I;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg0/N;

.field public static final b:Lg0/H;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg0/N;

    invoke-direct {v0}, Lg0/N;-><init>()V

    sput-object v0, Lg0/I;->a:Lg0/N;

    new-instance v0, Lg0/H;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Float;

    const-string v3, "translationAlpha"

    invoke-direct {v0, v2, v3, v1}, Lg0/H;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lg0/I;->b:Lg0/H;

    new-instance v0, Lg0/H;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lg0/H;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    return-void
.end method
