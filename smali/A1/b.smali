.class public final LA1/b;
.super Landroid/graphics/drawable/shapes/PathShape;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final d:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    iput-object p1, p0, LA1/b;->d:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 0

    iget-object p0, p0, LA1/b;->d:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    return-void
.end method
